-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'awesomesauce_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('awesomesauce_action', 'awesomesauce_block_data', '_wp_attachment_image_alt', '_EventCost', '_EventCurrencySymbol', '_EventURL', '_EventStartDate', '_EventEndDate');
DELETE FROM wp_usermeta WHERE meta_key IN ('awesomesauce_action', 'awesomesauce_block_data', '_wp_attachment_image_alt', '_EventCost', '_EventCurrencySymbol', '_EventURL', '_EventStartDate', '_EventEndDate');
DELETE FROM wp_termmeta WHERE meta_key IN ('awesomesauce_action', 'awesomesauce_block_data', '_wp_attachment_image_alt', '_EventCost', '_EventCurrencySymbol', '_EventURL', '_EventStartDate', '_EventEndDate');
DELETE FROM wp_commentmeta WHERE meta_key IN ('awesomesauce_action', 'awesomesauce_block_data', '_wp_attachment_image_alt', '_EventCost', '_EventCurrencySymbol', '_EventURL', '_EventStartDate', '_EventEndDate');

