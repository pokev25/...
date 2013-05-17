_android () {
    local curcontext="$curcontext" state line
    typeset -A opt_args

    _arguments -C ':command:->command' '*::options:->options'
    case $state in
    (command) {
        local -a subcommands
        subcommands=(
            'sdk:Displays the SDK Manager window.'
            'avd:Displays the AVD Manager window.'
            'list:Lists existing targets or virtual devices.'
            'create:Creates avd or projects.'
            'move:Moves or renames'
            'delete:Deletes avd.'
            'update:Updates avd or projects.'
        )
        _describe -t commands 'android' subcommands
    };;
    (options) {
        case $line[1] in
        (create) {
            _android-create
        };;
        (update) {
            _android-update
        };;
        esac
    };;
    esac
}

_android-create() {
    local curcontext="$curcontext" state line
    typeset -A opt_args

    _arguments -C ':command:->command' '*::options:->options'
    case $state in
    (command) {
        subcommands=(
            'avd:Creates a new Android Virtual Device.'
            'project:Creates a new Android project.'
            'test-project:Creates a new Android project for a test package.'
            'lib-project:Creates a new Android library project.'
            'uitest-project:Creates a new UI test project.'
        )
        _describe -t commands 'android create' subcommands
    };;
    esac
}

# TODO `update *project` is valid only if AndroidManifest.xml exists
_android-update() {
    local curcontext="$curcontext" state line
    typeset -A opt_args

    _arguments -C ':command:->command' '*::options:->options'
    case $state in
    (command) {
        subcommands=(
            'avd:Updates an Android Virtual Device to match the folders of a new SDK.'
            'project:Updates an Android project (must already have an AndroidManifest.xml)'
            'test-project:Updates an Android project for a test package (must already have an AndroidManifest.xml).'
            'lib-project:Updates an Android library project (must already have an AndroidManifest.xml)'
            'uitest-project:Updates an UI test project (must already have an AndroidManifest.xml)'
        )
        _describe -t commands 'android create' subcommands
    };;
    esac
}

compdef _android android
