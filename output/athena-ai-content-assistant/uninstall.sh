#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'atheaico_options'
wp option delete 'atheaico_activation_date'
wp option delete 'atheaico_review_dismissed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'atheaico_chat_topics'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'atheaico_chat_topics'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'atheaico_chat_topics'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'atheaico_chat_topics'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'atheaico_chat_messages_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'atheaico_chat_messages_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'atheaico_chat_messages_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'atheaico_chat_messages_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_atheaico_generation_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_atheaico_generation_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_atheaico_generation_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_atheaico_generation_history'"
