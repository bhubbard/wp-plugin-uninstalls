#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jvm_richtext_icons_activated'
wp option delete 'jvm_richtext_icons_review_dismissed'
wp option delete 'jvm-rich-text-icons'

