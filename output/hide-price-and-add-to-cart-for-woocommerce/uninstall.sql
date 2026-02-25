-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wmhp_enable_userroles', 'wmhp_enable_products');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wmhp_hide_price', 'wmhp_replace_price_text', 'wmhp_hide_atc', 'wmhp_replace_atc_text', 'wmhp_hide_atc_options', 'wmhp_replace_atc_link', 'wmhp_all_products', 'wmhp_products', 'wmhp_categories', 'wmhp_tags', 'wmhp_users', 'wmhp_users_roles', 'wmhp_brands');
DELETE FROM wp_usermeta WHERE meta_key IN ('wmhp_hide_price', 'wmhp_replace_price_text', 'wmhp_hide_atc', 'wmhp_replace_atc_text', 'wmhp_hide_atc_options', 'wmhp_replace_atc_link', 'wmhp_all_products', 'wmhp_products', 'wmhp_categories', 'wmhp_tags', 'wmhp_users', 'wmhp_users_roles', 'wmhp_brands');
DELETE FROM wp_termmeta WHERE meta_key IN ('wmhp_hide_price', 'wmhp_replace_price_text', 'wmhp_hide_atc', 'wmhp_replace_atc_text', 'wmhp_hide_atc_options', 'wmhp_replace_atc_link', 'wmhp_all_products', 'wmhp_products', 'wmhp_categories', 'wmhp_tags', 'wmhp_users', 'wmhp_users_roles', 'wmhp_brands');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wmhp_hide_price', 'wmhp_replace_price_text', 'wmhp_hide_atc', 'wmhp_replace_atc_text', 'wmhp_hide_atc_options', 'wmhp_replace_atc_link', 'wmhp_all_products', 'wmhp_products', 'wmhp_categories', 'wmhp_tags', 'wmhp_users', 'wmhp_users_roles', 'wmhp_brands');

