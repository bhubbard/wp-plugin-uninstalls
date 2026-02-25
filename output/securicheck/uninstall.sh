#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hpixl_securicheck_hotlinking_image_url'
wp option delete 'hpixl_securicheck_destinataire_email_notifications'
wp option delete 'hpixl_securicheck_toggle_notifications'
wp option delete 'hpixl_securicheck_toggle_notifications_scan'
wp option delete 'hpixl_securicheck_toggle_notifications_compte_admin'
wp option delete 'hpixl_securicheck_toggle_notifications_ip_bloquee'
wp option delete 'hpixl_securicheck_toggle_notifications_ip_debloquee'
wp option delete 'hpixl_securicheck_toggle_limite_nombre_audit'
wp option delete 'hpixl_securicheck_text_limite_nombre_audit'
wp option delete 'hpixl_securicheck_toggle_delete_audits_after_uninstall'
wp option delete 'hpixl_securicheck_toggle_delete_reglages_after_uninstall'
wp option delete 'hpixl_securicheck_toggle_page_connexion_url'
wp option delete 'hpixl_securicheck_textarea_page_connexion_url'
wp option delete 'hpixl_securicheck_toggle_page_connexion_redirection'
wp option delete 'hpixl_securicheck_textarea_page_connexion_redirection'
wp option delete 'hpixl_securicheck_toggle_brute_force'
wp option delete 'hpixl_securicheck_text_max_tentatives_brute_force'
wp option delete 'hpixl_securicheck_text_periode_tentatives_brute_force'
wp option delete 'hpixl_securicheck_text_duree_blocage_brute_force'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"
wp option delete 'hpixl_securicheck_db_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_blocked_ip_%' OR option_name LIKE '_site_transient_blocked_ip_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_hpixl_securicheck_reset_%' OR option_name LIKE '_site_transient_hpixl_securicheck_reset_%'"
wp transient delete 'hpixl_securicheck_remind_me'

# Clear Cron Jobs
wp cron event delete 'hpixl_securicheck_pro_automatisation_audit_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'securicheck_promo_banner_hidden_until'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'securicheck_promo_banner_hidden_until'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'securicheck_promo_banner_hidden_until'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'securicheck_promo_banner_hidden_until'"
