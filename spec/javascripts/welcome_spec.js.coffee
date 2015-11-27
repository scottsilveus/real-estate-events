#= require spec_helper
#= require support/sinon
#= require components/welcome

describe 'Welcome', ->
  element = null
  component = React.createFactory(Welcome)

  beforeEach ->
    element = document.createElement('div')

  afterEach ->
    ReactDOM.unmountComponentAtNode(element)

  it 'Should render', ->
    rendered = ReactDOM.render(component({}), element)

    expect(rendered).to.exist
