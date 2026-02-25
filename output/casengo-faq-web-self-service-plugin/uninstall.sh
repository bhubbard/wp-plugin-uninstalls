#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cas_faq_searchbar'
wp option delete 'cas_faq_toparticlesection'
wp option delete 'cas_faq_compatibility'
wp option delete 'cas_faq_show_article_bullets'
wp option delete 'cas_faq_style'
wp option delete 'casengo-faq-simple-style-editor'
wp option delete 'cas_faq_custom_css'
wp option delete 'cas_widget_domain'
wp option delete 'casengo_faq_do_activation_redirect'
wp option delete 'casengo_faq_pagetitle'
wp option delete 'cas_faq_pagetitle'
wp option delete 'cas_faq_enabled'

