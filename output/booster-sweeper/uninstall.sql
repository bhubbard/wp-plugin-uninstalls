-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csf_demo_mode', '_booster_sweeper_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mb_booster_sweeper', 'booster_sweeper_discover_styles_frontend', 'booster_sweeper_discover_scripts_frontend', 'booster_sweeper_discover_styles_backend', 'booster_sweeper_discover_scripts_backend', 'booster_sweeper_dequeued_styles_frontend', 'booster_sweeper_dequeued_scripts_frontend', 'booster_sweeper_dequeued_styles_backend', 'booster_sweeper_dequeued_scripts_backend');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mb_booster_sweeper', 'booster_sweeper_discover_styles_frontend', 'booster_sweeper_discover_scripts_frontend', 'booster_sweeper_discover_styles_backend', 'booster_sweeper_discover_scripts_backend', 'booster_sweeper_dequeued_styles_frontend', 'booster_sweeper_dequeued_scripts_frontend', 'booster_sweeper_dequeued_styles_backend', 'booster_sweeper_dequeued_scripts_backend');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mb_booster_sweeper', 'booster_sweeper_discover_styles_frontend', 'booster_sweeper_discover_scripts_frontend', 'booster_sweeper_discover_styles_backend', 'booster_sweeper_discover_scripts_backend', 'booster_sweeper_dequeued_styles_frontend', 'booster_sweeper_dequeued_scripts_frontend', 'booster_sweeper_dequeued_styles_backend', 'booster_sweeper_dequeued_scripts_backend');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mb_booster_sweeper', 'booster_sweeper_discover_styles_frontend', 'booster_sweeper_discover_scripts_frontend', 'booster_sweeper_discover_styles_backend', 'booster_sweeper_discover_scripts_backend', 'booster_sweeper_dequeued_styles_frontend', 'booster_sweeper_dequeued_scripts_frontend', 'booster_sweeper_dequeued_styles_backend', 'booster_sweeper_dequeued_scripts_backend');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

