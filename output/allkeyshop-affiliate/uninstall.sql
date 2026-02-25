-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('allkeyshop_widget_key', 'allkeyshop_widget_affiliate_key');

