#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lnkbio_id'
wp option delete 'lnkbio_secret'
wp option delete 'lnkbio_category'
wp option delete 'lnkbio_group'

