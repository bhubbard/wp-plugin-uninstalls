-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ainp_settings', 'ainp_fallback_cron_check', 'ainp_manual_context');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ainp_hide_welcome_panel', '_ainp_guid', '_ainp_original_link', '_ainp_source_url', '_ainp_source_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('ainp_hide_welcome_panel', '_ainp_guid', '_ainp_original_link', '_ainp_source_url', '_ainp_source_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('ainp_hide_welcome_panel', '_ainp_guid', '_ainp_original_link', '_ainp_source_url', '_ainp_source_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ainp_hide_welcome_panel', '_ainp_guid', '_ainp_original_link', '_ainp_source_url', '_ainp_source_name');

