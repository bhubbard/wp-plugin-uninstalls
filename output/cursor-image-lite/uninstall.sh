#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cursimli_activation_time'
wp option delete 'cursimli_options'
wp option delete 'cursimli_support_notice_dismissed'

