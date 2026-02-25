#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lipsum-dynamo'
wp option delete 'lipsum_dynamo-cleanup'
wp option delete 'lipsum-dynamo-uninstall'
wp option delete 'lipsum-dynamo-general'
wp option delete 'lipnamo_db_version'
wp option delete 'lipsum_dynamo'

