-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'woorechnung_version', 'fakturpro_version', 'secondary_title_title_format', 'woorechnung_updated_2_0_0', 'woorechnung_line_description', 'woocommerce_email_footer_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed';

