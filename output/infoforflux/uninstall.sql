-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('infoforflux_name', 'infoforflux_expire_block', 'infoforflux_operator_port', 'infoforflux_theme', 'infoforflux_renew_reminder', 'infoforflux_renew_reminder_days', 'infoforflux_wp_repo', 'infoforflux_mysql_repo', 'infoforflux_mysql_nologbin', 'infoforflux_operator_repo', 'infoforflux_block_height', 'infoforflux_expiration_notice_dismissed');

