module ErrorsHelper

def display_errors(record)
render partial: 'errors_partial/errors', locals: {object: record}
end
end