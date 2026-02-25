-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hpixl_securicheck_hotlinking_image_url', 'hpixl_securicheck_destinataire_email_notifications', 'hpixl_securicheck_toggle_notifications', 'hpixl_securicheck_toggle_notifications_scan', 'hpixl_securicheck_toggle_notifications_compte_admin', 'hpixl_securicheck_toggle_notifications_ip_bloquee', 'hpixl_securicheck_toggle_notifications_ip_debloquee', 'hpixl_securicheck_toggle_limite_nombre_audit', 'hpixl_securicheck_text_limite_nombre_audit', 'hpixl_securicheck_toggle_delete_audits_after_uninstall', 'hpixl_securicheck_toggle_delete_reglages_after_uninstall', 'hpixl_securicheck_toggle_page_connexion_url', 'hpixl_securicheck_textarea_page_connexion_url', 'hpixl_securicheck_toggle_page_connexion_redirection', 'hpixl_securicheck_textarea_page_connexion_redirection', 'hpixl_securicheck_toggle_brute_force', 'hpixl_securicheck_text_max_tentatives_brute_force', 'hpixl_securicheck_text_periode_tentatives_brute_force', 'hpixl_securicheck_text_duree_blocage_brute_force', 'hpixl_securicheck_db_version', 'hpixl_securicheck_remind_me');
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%';
DELETE FROM wp_options WHERE option_name LIKE 'blocked_ip_%';
DELETE FROM wp_options WHERE option_name LIKE 'hpixl_securicheck_reset_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('securicheck_promo_banner_hidden_until');
DELETE FROM wp_usermeta WHERE meta_key IN ('securicheck_promo_banner_hidden_until');
DELETE FROM wp_termmeta WHERE meta_key IN ('securicheck_promo_banner_hidden_until');
DELETE FROM wp_commentmeta WHERE meta_key IN ('securicheck_promo_banner_hidden_until');

