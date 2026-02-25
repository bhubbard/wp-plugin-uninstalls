#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'summary_showlink'
wp option delete 'summary_head'
wp option delete 'summary_listtype'
wp option delete 'summary_align'

