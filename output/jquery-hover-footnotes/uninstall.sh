#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jqfoot_anchor_open'
wp option delete 'jqfoot_anchor_close'
wp option delete 'jqfoot_title'
wp option delete 'jqfoot_backimg'
wp option delete 'jqfoot_hidefnlist'
wp option delete 'jqfoot_nohover'

