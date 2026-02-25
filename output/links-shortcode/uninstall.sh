#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'linkssc_enable_links_manager'
wp option delete 'linkssc_default_css'
wp option delete 'linkssc_facebook'
wp option delete 'linkssc_fbcolors'
wp option delete 'linkssc_template'
wp option delete 'linkssc_template_b'
wp option delete 'linkssc_template_a'
wp option delete 'linkssc_orderby'
wp option delete 'linkssc_order'
wp option delete 'linkssc_howmany'

