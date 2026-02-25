-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wheeloflife_queue_flush_rewrite_rules', 'wheel_of_life_CTA', 'wheel_of_life_social_sharing');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('userId', 'wheelId', 'chartData', 'chartOptions', 'chartType');
DELETE FROM wp_usermeta WHERE meta_key IN ('userId', 'wheelId', 'chartData', 'chartOptions', 'chartType');
DELETE FROM wp_termmeta WHERE meta_key IN ('userId', 'wheelId', 'chartData', 'chartOptions', 'chartType');
DELETE FROM wp_commentmeta WHERE meta_key IN ('userId', 'wheelId', 'chartData', 'chartOptions', 'chartType');

