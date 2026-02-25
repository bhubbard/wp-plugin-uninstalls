#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jfpb_justification_mode'
wp option delete 'jfpb_enable_hyphens'
wp option delete 'jfpb_word_spacing'
wp option delete 'jfpb_word_spacing_custom_value'
wp option delete 'jfpb_word_spacing_custom_unit'

