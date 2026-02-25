#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ravatar_auto'
wp option delete 'ravatar_size'
wp option delete 'ravatar_border'
wp option delete 'ravatar_suffix'
wp option delete 'ravatar_prefix'
wp option delete 'ravatar_noplug'
wp option delete 'ravatar_gravatars'
wp option delete 'ravatar_rating'
wp option delete 'ravatar_email_blank'

