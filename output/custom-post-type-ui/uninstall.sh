#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'cptui-user-dismissed-extended-upsell'
wp option delete 'cptui_post_types'
wp option delete 'cptui_taxonomies'
wp option delete 'cpt_custom_post_types'
wp option delete 'cpt_custom_tax_types'
wp option delete 'cptui_new_install'

# Delete Transients
wp transient delete 'cptui_activation_redirect'
wp transient delete 'cptui_flush_rewrite_rules'

