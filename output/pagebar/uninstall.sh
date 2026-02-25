#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Pagebar2_Postbar'
wp option delete 'Pagebar2_Multipagebar'
wp option delete 'pagebar2_commentbar'
wp option delete 'commentbar'
wp option delete 'postbar'
wp option delete 'multipagebar'
wp option delete 'pagebar2_postbar'

