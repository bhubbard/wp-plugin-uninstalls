#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'en_p_t_ek_e'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'en_p_t_has_ek'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'en_p_t_has_ek'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'en_p_t_has_ek'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'en_p_t_has_ek'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_en_p_t_r_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_en_p_t_r_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_en_p_t_r_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_en_p_t_r_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_en_p_t_e_iv'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_en_p_t_e_iv'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_en_p_t_e_iv'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_en_p_t_e_iv'"
