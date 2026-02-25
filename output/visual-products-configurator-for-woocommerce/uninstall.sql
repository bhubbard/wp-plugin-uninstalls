-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vpc-options', 'vpc_do_activation_redirect', 'woocommerce_currency_pos', 'woocommerce_tax_display_shop', 'vpc-checking');
DELETE FROM wp_options WHERE option_name LIKE '%-license-key';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vpc-config', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('vpc-config', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('vpc-config', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vpc-config', '_wp_attachment_image_alt');

