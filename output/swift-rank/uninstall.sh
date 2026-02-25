#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'swift_rank_pro_notice_dismissed'
wp option delete 'swift_rank_pro_notice_dismissed_time'
wp option delete 'swift_rank_settings'
wp option delete 'swift_rank_wizard_state'

# Delete Transients
wp transient delete 'swift_rank_activation_redirect'
wp transient delete 'swift_rank_wizard_notice_dismissed'
wp transient delete 'swift_rank_wizard_pending'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_schema_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_schema_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_schema_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_schema_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_schema_subtype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_schema_subtype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_schema_subtype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_schema_subtype'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_schema_template_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_schema_template_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_schema_template_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_schema_template_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_schema_template_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_schema_template_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_schema_template_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_schema_template_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_swift_rank_overrides'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_swift_rank_overrides'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_swift_rank_overrides'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_swift_rank_overrides'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brand'"
