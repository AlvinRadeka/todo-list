package main

import (
	"github.com/alvinradeka/todo-list/src/domain"
	"github.com/alvinradeka/todo-list/src/rest"
	"github.com/alvinradeka/todo-list/src/usecase"
)

func main() {
	dom := domain.NewDom()

	uc := usecase.NewUC(dom)

	r := rest.Init(uc)

	r.Run()
}
