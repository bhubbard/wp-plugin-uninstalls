#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tealiumDataStyle'
wp option delete 'tealiumExcludeMetaData'
wp option delete 'tealiumAccount'
wp option delete 'tealiumProfile'
wp option delete 'tealiumEnvironment'
wp option delete 'tealiumExclusions'
wp option delete 'tealiumUtagSync'
wp option delete 'tealiumCacheBuster'
wp option delete 'tealiumDNSPrefetch'
wp option delete 'tealiumEUOnly'
wp option delete 'tealiumNamespace'
wp option delete 'tealiumTagCode'
wp option delete 'tealiumTag'
wp option delete 'tealiumTagLocation'
wp option delete 'tealiumTagType'

