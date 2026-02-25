-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adobe_analytics_library_url', 'adobe_analytics_account_id', 'adobe_analytics_custom_js', 'adobe_analytics_custom_variables');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('adobe_analytics_repeatable');
DELETE FROM wp_usermeta WHERE meta_key IN ('adobe_analytics_repeatable');
DELETE FROM wp_termmeta WHERE meta_key IN ('adobe_analytics_repeatable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('adobe_analytics_repeatable');

