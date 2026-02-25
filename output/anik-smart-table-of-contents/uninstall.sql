-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aniksmta_settings', 'aniksmta_install_date', 'aniksmta_review_dismissed', 'aniksmta_review_done', 'aniksmta_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aniksmta_disable', '_aniksmta_heading_levels');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aniksmta_disable', '_aniksmta_heading_levels');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aniksmta_disable', '_aniksmta_heading_levels');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aniksmta_disable', '_aniksmta_heading_levels');

