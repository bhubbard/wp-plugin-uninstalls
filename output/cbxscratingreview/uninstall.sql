-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cbxscratingreview_tools', 'cbxscratingreview_upgraded_notice', 'cbxscratingreview_activated_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cbxscratingreview_avg', '_cbxscratingreview_total');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cbxscratingreview_avg', '_cbxscratingreview_total');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cbxscratingreview_avg', '_cbxscratingreview_total');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cbxscratingreview_avg', '_cbxscratingreview_total');

