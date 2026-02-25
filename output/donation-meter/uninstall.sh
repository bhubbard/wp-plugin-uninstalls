#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jtdonmet_redirectPageData'
wp option delete 'jtdonmet_genOptions'
wp option delete 'jtdonmet_cstmOptions'
wp option delete 'jtdonmetplus_getValues'

