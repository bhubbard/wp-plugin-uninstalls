-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tlb_show_logged_in', 'tlb_show_logged_out', 'tlb_remember_user_role', 'tlb_redirect_after_login', 'tlb_cookie_expire', 'tlb_uninstall_delete');

