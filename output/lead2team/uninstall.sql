-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lead2team-settings', 'lead2team-all-filters');
DELETE FROM wp_options WHERE option_name LIKE '%-settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lead2team-settings', 'lead2team-filter');
DELETE FROM wp_usermeta WHERE meta_key IN ('lead2team-settings', 'lead2team-filter');
DELETE FROM wp_termmeta WHERE meta_key IN ('lead2team-settings', 'lead2team-filter');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lead2team-settings', 'lead2team-filter');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-widget-hide';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-widget-hide';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-widget-hide';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-widget-hide';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-settings';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-settings';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-settings';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-settings';

