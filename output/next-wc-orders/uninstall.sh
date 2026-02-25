#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nwcoCurrentVersion'
wp option delete 'nwcoCurrentType'
wp option delete 'optShowOrderProducts'
wp option delete 'optStatusCompleted'
wp option delete 'optStatusOnhold'
wp option delete 'optStatusProcessing'
wp option delete 'optStatusPending'
wp option delete 'optStatusRefunded'
wp option delete 'optStatusCancelled'
wp option delete 'optStatusFailed'
wp option delete 'optPie3D'
wp option delete 'optShipping'
wp option delete 'optYear'
wp option delete 'optProd'
wp option delete 'optCat'
wp option delete 'optStatus'
wp option delete 'optTotal'

