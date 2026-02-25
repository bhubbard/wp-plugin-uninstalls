-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wphcu_display_footer', 'wphcu_data', 'wphcu_count_404', 'wphcu_count_only_unique', 'wphcu_count_admin', 'wphcu_exclude_ips', 'wphcu_style', 'wphcu_align', 'wphcu_css', 'wphcu_display_credit', 'wphcu_check_update', 'wphcu_algin');

