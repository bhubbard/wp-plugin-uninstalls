-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('SPEEDBOOSTER_check_enable', 'SPEEDBOOSTER_adv_enable', 'SPEEDBOOSTER_admn_enable', 'SPEEDBOOSTER_html_enable', 'SPEEDBOOSTER_comm_enable', 'SPEEDBOOSTER_emoj_enable', 'SPEEDBOOSTER_migr_enable', 'SPEEDBOOSTER_shor_enable', 'SPEEDBOOSTER_quer_enable', 'SPEEDBOOSTER_foot_enable', 'SPEEDBOOSTER_async_enable', 'SPEEDBOOSTER_lazy_enable', 'SPEEDBOOSTER_cach_enable', 'SPEEDBOOSTER_embd_enable', 'wpss_disable_comment_cookies');

