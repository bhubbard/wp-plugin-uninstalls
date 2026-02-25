-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('whls_default_logo', 'whls_dark_logo');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('whls_options_from_date_', 'whls_options_to_date_', 'logo_options_image_alt', 'whls_options_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('whls_options_from_date_', 'whls_options_to_date_', 'logo_options_image_alt', 'whls_options_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('whls_options_from_date_', 'whls_options_to_date_', 'logo_options_image_alt', 'whls_options_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('whls_options_from_date_', 'whls_options_to_date_', 'logo_options_image_alt', 'whls_options_image_alt');

