#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sphca_On_Homepage'
wp option delete 'sphca_On_Posts'
wp option delete 'sphca_On_Pages'
wp option delete 'sphca_On_Archives'
wp option delete 'sphca_On_Search'
wp option delete 'sphca_option'

