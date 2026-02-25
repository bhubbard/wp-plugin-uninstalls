#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'leira_letter_avatar_rounded'
wp option delete 'leira_letter_avatar_gravatar'
wp option delete 'leira_letter_avatar_format'
wp option delete 'leira_letter_avatar_letters'
wp option delete 'leira_letter_avatar_bold'
wp option delete 'leira_letter_avatar_uppercase'
wp option delete 'leira_letter_avatar_color_method'
wp option delete 'leira_letter_avatar_color'
wp option delete 'leira_letter_avatar_method'
wp option delete 'leira_letter_avatar_bg'
wp option delete 'leira_letter_avatar_bgs'
wp option delete 'leira_letter_avatar_footer_rated'

