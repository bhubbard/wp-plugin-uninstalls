#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tn_menu_marginleft'
wp option delete 'tn_menu_marginright'
wp option delete 'tn_menu_margintop'
wp option delete 'tn_menu_marginbottom'
wp option delete 'tn_menu_customclass'
wp option delete 'tn_menu_customwidth'
wp option delete 'tn_menu_customwidth2'
wp option delete 'tn_tinynav_viewport'
wp option delete 'tn_tinynav_footer'

