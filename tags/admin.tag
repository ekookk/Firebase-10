<admin>

  <div class="login" if={!currentUser}>
     <p>It is all done, piggy</p>
     <button type="button" onclick={ logIn }>okkkk</button>
   </div>
   <div class="login" if={currentUser}>
      <p>Welcome to the the world of piggy.</p>
      <button type="button" onclick={ logOut}>not yetttt</button>
</div>

<script>
  var tag = this;

this.currentUser = user.currentUser;

    //sign-in with google
    this.logIn = function () {
      console.log("logging in...");
      var provider = new firebase.auth.GoogleAuthProvider();
      user.signInWithPopup(provider);
    }

    //sign-out
    this.logOut = function () {
      console.log("logging out...");
      user.signOut();
    }

    // sign-in Listener
    user.onAuthStateChanged(function(userObj) {
      tag.currentUser = user.currentUser;
      tag.update();
    });


</script>



</admin>
