#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'TP_TextLength'
wp option delete 'TP_category'
wp option delete 'TP_MoreText'
wp option delete 'TP_MoreLink'
wp option delete 'TP_name'

