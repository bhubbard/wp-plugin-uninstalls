#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'haet_mail_options'
wp option delete 'haet_mail_theme_options'
wp option delete 'haet_mail_plugin_options'
wp option delete 'wpsc_trackingid_subject'
wp option delete 'wpsp_advanced_settings'

# Delete Transients
wp transient delete 'haet_mail_templates'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailbuilder_css_desktop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailbuilder_css_desktop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailbuilder_css_desktop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailbuilder_css_desktop'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailbuilder_css_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailbuilder_css_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailbuilder_css_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailbuilder_css_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailbuilder_attachments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailbuilder_attachments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailbuilder_attachments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailbuilder_attachments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailbuilder_json'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailbuilder_json'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailbuilder_json'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailbuilder_json'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailbuilder_header_hidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailbuilder_header_hidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailbuilder_header_hidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailbuilder_header_hidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailbuilder_footer_hidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailbuilder_footer_hidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailbuilder_footer_hidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailbuilder_footer_hidden'"
