<style>
#headColor{
color: yellow;
}
  .contain{
  border-radius: 15px
  }
</style>
<nav class="navbar navbar-expand-lg bg-primary contain">
  <div class="container-fluid">
    <a class="navbar-brand text-light heading" href="#"><h1>Note<span id="headColor">Taker</span></h1></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active text-light" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-light" href="notesadd.jsp">Add Notes</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-light" href="show_notes.jsp">Show Notes</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>