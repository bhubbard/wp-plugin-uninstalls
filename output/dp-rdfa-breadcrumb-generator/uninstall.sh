#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dp_breadcrumb_showhome'
wp option delete 'dp_breadcrumb_showpost'
wp option delete 'dp_breadcrumb_showpage'
wp option delete 'dp_breadcrumb_showarchive'
wp option delete 'dp_breadcrumb_showtag'
wp option delete 'dp_breadcrumb_optseparator'
wp option delete 'dp_breadcrumb_opttext'
wp option delete 'dp_breadcrumb_opttexthome'
wp option delete 'dp_breadcrumb_opttitle'
wp option delete 'dp_breadcrumb_optlastchild'
wp option delete 'dp_breadcrumb_optmultiple'
wp option delete 'dp_breadcrumb_optremove'

