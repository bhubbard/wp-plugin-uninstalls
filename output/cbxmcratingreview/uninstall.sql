-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cbxmcratingreview_emails', 'cbxmcratingreview_version', 'cbxmcratingreview_email_tpl', 'cbxmcratingreview_pages', 'cbxmcratingreview_upgraded_notice', 'cbxmcratingreview_activated_notice', 'cbxmcratingreview_proaddon_deactivated', 'cbxmcratingreview_commentaddon_deactivated', 'cbxmcratingreview_mycredaddon_deactivated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cbxmcratingreview_avg', '_cbxmcratingreview_total');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cbxmcratingreview_avg', '_cbxmcratingreview_total');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cbxmcratingreview_avg', '_cbxmcratingreview_total');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cbxmcratingreview_avg', '_cbxmcratingreview_total');

