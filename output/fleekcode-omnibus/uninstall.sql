-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fleekcode_omnibus_settings', 'fleekcode_omnibus_enabled', 'fleekcode_omnibus_text', 'fleekcode_omnibus_display_location', 'fleekcode_omnibus_price_position', 'fleekcode_omnibus_days', 'fleekcode_omnibus_min_price_display_mode', 'fleekcode_omnibus_display_method', 'fleekcode_omnibus_version', 'fleekcode_statistics_consent', 'fleekcode_statistics_consent_time', 'fleekcode_statistics_last_sent', 'fleekcode_omnibus_updated_variations');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fleekcode_hide_review_banner');
DELETE FROM wp_usermeta WHERE meta_key IN ('fleekcode_hide_review_banner');
DELETE FROM wp_termmeta WHERE meta_key IN ('fleekcode_hide_review_banner');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fleekcode_hide_review_banner');

