import pandas as pd

Product= pd.read_excel('Products_data.xlsx')

# Drop  index column

if 'index' in Product.columns:
    Product.drop(columns = ['index'] , inplace = True)


# Handle Missing Values

Product['product'] = Product['product'].fillna("Unknown Product")
Product['brand'] = Product['brand'].fillna("Unknown Brand")


# Create New Columns

Product['discount'] = Product['market_price']-Product['sale_price']
Product['discount%'] = (Product['discount']/Product['market_price'])*100

print(Product.head())

Product.to_csv('product_clean_data.csv', index= False)
print('Data saved')


