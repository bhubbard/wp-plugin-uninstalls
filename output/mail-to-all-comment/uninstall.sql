-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qw_MTA_default_sub', 'qw_MTA_subject', 'qw_MTA_mail', 'qw_MTA_list', 'qw_MTA_content', 'qw_MTA_post', 'qw_MTA_notsentpost');

