#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'custom-next-page'
wp option delete 'custom-next-page-previouspagelink'
wp option delete 'custom-next-page-convert'
wp option delete 'custom-next-page-initialization'
wp option delete 'custom-next-page-filter'
wp option delete 'custom-next-page-before-text'
wp option delete 'custom-next-page-after-text'
wp option delete 'custom-next-page-nextpagelink'
wp option delete 'custom-next-page-firstpagelink'
wp option delete 'custom-next-page-lastpagelink'

