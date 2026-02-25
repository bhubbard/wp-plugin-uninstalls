-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpdtol_database_table_overview_logs_version', 'wpdtol_database_table_overview_logs_email_report_recipients');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpdtol_database_table_overview_logs_admin_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpdtol_database_table_overview_logs_admin_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpdtol_database_table_overview_logs_admin_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpdtol_database_table_overview_logs_admin_notice_dismissed');

