#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'la_sentinelle-honeypot'
wp option delete 'la_sentinelle-nonce'
wp option delete 'la_sentinelle-timeout'
wp option delete 'la_sentinelle-sfs'
wp option delete 'la_sentinelle-ajax'
wp option delete 'la_sentinelle-wpcomment'
wp option delete 'la_sentinelle-wplogin'
wp option delete 'la_sentinelle-wppassword'
wp option delete 'la_sentinelle-wpregister'
wp option delete 'la_sentinelle-everest'
wp option delete 'la_sentinelle-formidable'
wp option delete 'la_sentinelle-forminator'
wp option delete 'la_sentinelle-noptin'
wp option delete 'la_sentinelle-woo-registration'
wp option delete 'la_sentinelle-wpforms'
wp option delete 'la_sentinelle-wpjobmanager'
wp option delete 'la_sentinelle-save_comments'
wp option delete 'la_sentinelle-remove_comments'
wp option delete 'la_sentinelle-caldera_blocked'
wp option delete 'la_sentinelle-cf7_blocked'
wp option delete 'la_sentinelle-everest_blocked'
wp option delete 'la_sentinelle-experiment'
wp option delete 'la_sentinelle-formidable_blocked'
wp option delete 'la_sentinelle-forminator_blocked'
wp option delete 'la_sentinelle-honeypot_value'
wp option delete 'la_sentinelle-noptin_blocked'
wp option delete 'la_sentinelle-version'
wp option delete 'la_sentinelle-wpcomments_blocked'
wp option delete 'la_sentinelle-wpforms_blocked'
wp option delete 'la_sentinelle-wpjobmanager_blocked'
wp option delete 'la_sentinelle-wplogin_blocked'
wp option delete 'la_sentinelle-wppassword_blocked'
wp option delete 'la_sentinelle-wpregister_blocked'
wp option delete 'la_sentinelle-edd-disable-ajax'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lasent_plugin_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lasent_plugin_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lasent_plugin_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lasent_plugin_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lasent_spamfilters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lasent_spamfilters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lasent_spamfilters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lasent_spamfilters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'la_sentinelle_nonce'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'la_sentinelle_nonce'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'la_sentinelle_nonce'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'la_sentinelle_nonce'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'la_sentinelle_honeypot'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'la_sentinelle_honeypot'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'la_sentinelle_honeypot'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'la_sentinelle_honeypot'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'la_sentinelle_timeout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'la_sentinelle_timeout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'la_sentinelle_timeout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'la_sentinelle_timeout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'la_sentinelle_ajax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'la_sentinelle_ajax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'la_sentinelle_ajax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'la_sentinelle_ajax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'la_sentinelle_sfs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'la_sentinelle_sfs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'la_sentinelle_sfs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'la_sentinelle_sfs'"
