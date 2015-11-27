{ div, h2 } = React.DOM

@Welcome = React.createClass({
  render: ->
    (div {className: 'welcome'}, [
      (h2 {key: 'h2', className: 'h2'}, 'Welcome')
  ])
})
