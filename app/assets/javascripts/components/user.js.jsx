var User = React.createClass({
  handleClick: function(e){
    console.log(e.target)
  },
  getInitialState: function() {
    return {
      users: this.props.data
    };
  },
  render: function() {
    var userNodes = this.state.users.map(function(u){
      var styles = { backgroundColor: u.color }
      return <div key={u.id} onClick={this.handleClick} style={styles}>Name: {u.name} | Color: {u.color} </div>
    })
    return (
      <div className="User">
        <h1>Users</h1>
        {userNodes}
      </div>
    );
  }
});
