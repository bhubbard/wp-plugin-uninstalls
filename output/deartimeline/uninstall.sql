-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dearti_color', '_dearti_date', '_dearti_day_month');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dearti_color', '_dearti_date', '_dearti_day_month');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dearti_color', '_dearti_date', '_dearti_day_month');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dearti_color', '_dearti_date', '_dearti_day_month');

