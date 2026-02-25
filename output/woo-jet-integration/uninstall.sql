-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jetapiurl', 'jetapiuser', 'jetsecretkey', 'jetfulfillmentid', 'jetemailaddress', 'jetstorename', 'jetreturnid', 'jetfirstaddress', 'jetsecondaddress', 'jetcity', 'jetstate', 'jetzipcode', 'NueveWooJetMapping', 'attr_table_updated', 'jetwebservicesapiurl');
DELETE FROM wp_options WHERE option_name LIKE '%_NueveJetAttributes';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('JetParentSKU', 'JetStandardProductCodeType', 'JetStandardProductCode', 'Jet_PriceSelect', 'Jet_Price', 'Jet_StockSelect', 'Jet_Stock', 'JetMultiPackQuantity', 'JetMapPrice', 'JetMapImplementation', 'JetMSRP', 'JetProductBrand', 'JetCountry', 'JetProductManufacturer', 'JetMFR', 'JetPackageLength', 'JetPackageWidth', 'JetPackageHeight', 'JetProductTaxCode', 'JetSafetyWarning', 'JetLegalDisc', 'JetProp65', 'JetBullets', 'JetCpsiaCautionaryStatements', 'JetSelectedCatAttr', 'JetProductStatus', '_stock', '_regular_price', '_sale_price', '_weight');
DELETE FROM wp_usermeta WHERE meta_key IN ('JetParentSKU', 'JetStandardProductCodeType', 'JetStandardProductCode', 'Jet_PriceSelect', 'Jet_Price', 'Jet_StockSelect', 'Jet_Stock', 'JetMultiPackQuantity', 'JetMapPrice', 'JetMapImplementation', 'JetMSRP', 'JetProductBrand', 'JetCountry', 'JetProductManufacturer', 'JetMFR', 'JetPackageLength', 'JetPackageWidth', 'JetPackageHeight', 'JetProductTaxCode', 'JetSafetyWarning', 'JetLegalDisc', 'JetProp65', 'JetBullets', 'JetCpsiaCautionaryStatements', 'JetSelectedCatAttr', 'JetProductStatus', '_stock', '_regular_price', '_sale_price', '_weight');
DELETE FROM wp_termmeta WHERE meta_key IN ('JetParentSKU', 'JetStandardProductCodeType', 'JetStandardProductCode', 'Jet_PriceSelect', 'Jet_Price', 'Jet_StockSelect', 'Jet_Stock', 'JetMultiPackQuantity', 'JetMapPrice', 'JetMapImplementation', 'JetMSRP', 'JetProductBrand', 'JetCountry', 'JetProductManufacturer', 'JetMFR', 'JetPackageLength', 'JetPackageWidth', 'JetPackageHeight', 'JetProductTaxCode', 'JetSafetyWarning', 'JetLegalDisc', 'JetProp65', 'JetBullets', 'JetCpsiaCautionaryStatements', 'JetSelectedCatAttr', 'JetProductStatus', '_stock', '_regular_price', '_sale_price', '_weight');
DELETE FROM wp_commentmeta WHERE meta_key IN ('JetParentSKU', 'JetStandardProductCodeType', 'JetStandardProductCode', 'Jet_PriceSelect', 'Jet_Price', 'Jet_StockSelect', 'Jet_Stock', 'JetMultiPackQuantity', 'JetMapPrice', 'JetMapImplementation', 'JetMSRP', 'JetProductBrand', 'JetCountry', 'JetProductManufacturer', 'JetMFR', 'JetPackageLength', 'JetPackageWidth', 'JetPackageHeight', 'JetProductTaxCode', 'JetSafetyWarning', 'JetLegalDisc', 'JetProp65', 'JetBullets', 'JetCpsiaCautionaryStatements', 'JetSelectedCatAttr', 'JetProductStatus', '_stock', '_regular_price', '_sale_price', '_weight');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_JetSelectedCatAttr';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_JetSelectedCatAttr';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_JetSelectedCatAttr';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_JetSelectedCatAttr';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_unit';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_unit';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_unit';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_unit';

