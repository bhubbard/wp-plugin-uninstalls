#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Circolari_EditorGutenberg'
wp option delete 'Circolari_Versione'
wp option delete 'Circolari_Visibilita_Pubblica'
wp option delete 'Circolari_Categoria'
wp option delete 'Circolari_GGScadenza'
wp option delete 'Circolari_NrCircHome'
wp option delete 'Circolari_UsaGroups'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibilita'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibilita'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibilita'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibilita'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sciopero'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sciopero'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sciopero'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sciopero'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_firma'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_firma'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_firma'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_firma'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scadenza'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scadenza'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scadenza'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scadenza'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easymail_recipients'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easymail_recipients'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easymail_recipients'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easymail_recipients'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_placeholder_easymail_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_placeholder_easymail_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_placeholder_easymail_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_placeholder_easymail_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_placeholder_post_imgsize'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_placeholder_post_imgsize'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_placeholder_post_imgsize'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_placeholder_post_imgsize'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_placeholder_newsletter_imgsize'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_placeholder_newsletter_imgsize'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_placeholder_newsletter_imgsize'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_placeholder_newsletter_imgsize'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easymail_theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easymail_theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easymail_theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easymail_theme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sendNewsLetter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sendNewsLetter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sendNewsLetter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sendNewsLetter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_numero'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_numero'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_numero'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_numero'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_anno'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_anno'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_anno'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_anno'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibilita_generale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibilita_generale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibilita_generale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibilita_generale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gruppo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gruppo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gruppo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gruppo'"
